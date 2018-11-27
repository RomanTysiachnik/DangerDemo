# Warnings

## WIP PR
warn 'PR is marked as Work In Progress.' if github.pr_title.downcase.include? "Wipe's"

## Big PR
warn 'Big PR' if git.lines_of_code > 500

## No assignees
warn 'This PR does not have any assignees yet.' unless github.pr_json['assignee']

## Too many commits
warn '#{git.commits.count} commits too many - please, squash them' if git.commits.count > 5

## No description
warn 'Please, provide a description to your PR' if github.pr_body.empty?

# Failures

## Invalid branch name
branch_name = ENV['TRAVIS_PULL_REQUEST_BRANCH']
fail 'Branch name should contain only JIRA ticket' unless branch_name[/OMSDK-[0-9]{3,}\/.{3,}/]

## Ensure a clean commits history
if git.commits.any? { |c| c.message =~ /^Merge branch '#{github.branch_for_base}'/ }
  fail 'Please rebase to get rid of the merge commits in this PR'
end

# Coverage
xcov.report(
   scheme: 'DangerDemo',
   project: 'DangerDemo.xcodeproj'
)

# Linters
swiftlint.lint_files

# Messages

## Code cleaning
message("Good job on cleaning the code!") if git.deletions > git.insertions

