class IssueAttachmentsController < ApplicationController
    before_action :find_issue
  
    def download
      attachments = @issue.attachments
      if attachments.any?
        # Create a zip file of all attachments
        zip_file = Tempfile.new(["attachments", ".zip"], binmode: true)
        Zip::File.open(zip_file.path, Zip::File::CREATE) do |zip|
          attachments.each do |attachment|
            zip.add(attachment.filename.to_s, attachment.diskfile)
          end
        end
  
        # Send the zip file to the browser
        send_file zip_file.path,
                  filename: "attachments_#{issue_identifier}.zip",
                  type: "application/zip",
                  disposition: 'attachment'
      else
        redirect_to issue_path(@issue), alert: 'No attachments available to download.'
      end
    end
  
    private
  
    def find_issue
      @issue = Issue.find(params[:id])
    end
  
    def issue_identifier
      @issue.id
    end
  end
  