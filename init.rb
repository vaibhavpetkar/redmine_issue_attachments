Redmine::Plugin.register :redmine_issue_attachments do
    name 'Redmine Issue Attachments Plugin'
    author 'Vaibhav Petkar'
    description 'This plugin adds a button to download all attachments for an issue.'
    version '0.0.1'
    url 'https://github.com/vaibhavpetkar/redmine_issue_attachments'
    author_url 'https://github.com/vaibhavpetkar'
  
    # Ensure plugin is compatible with Redmine version
    requires_redmine version_or_higher: '4.2.0'
  end
  