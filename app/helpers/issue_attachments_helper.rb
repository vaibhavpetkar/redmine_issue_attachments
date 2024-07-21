module IssueAttachmentsHelper
    def download_attachments_button(issue)
      return unless issue.attachments.any?
  
      link_to 'Download All Attachments', download_attachments_issue_path(issue),
              class: 'button', title: 'Download all attachments for this issue'
    end
  end
  