# redmine_issue_attachments
Adds a download button to zip and download all attachments for an issue.
Installation P
Download the Attachments Plugin for Redmine
This plugin adds a download button to each issue in Redmine, allowing users to download all attachments for the issue as a zip file. The button is enabled only if the issue has attachments.

Features
- Adds a "Download Attachments" button to issue pages.
- Zips and downloads all attachments for the issue.
- Button is disabled if there are no attachments.

Requirements
- Redmine 3.0.0 or higher
- Ruby 2.0 or higher

Installation
1. Download the Plugin
 Navigate to the Redmine `plugins` directory and clone the plugin repository:
2. cd /path/to/your/redmine/plugins
3. git clone https://github.com/vaibhavpetkar/redmine_issue_attachments.git
4. bundle install
5.bundle exec rake redmine:plugins:migrate NAME=redmine_issue_attachments
//or//
bundle exec rake redmine:plugins:migrate NAME=redmine_issue_attachments RAILS_ENV=production

6.bundle exec rake tmp:cache:clear

sudo systemctl restart redmine

Atom
Changelog
0.0.1 (2024-07-22)
Compatible with Redmine 6.0.x, 5.1.x, 5.0.x, 4.2.x, 4.1.x, 4.0.x.
