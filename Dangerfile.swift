import Danger 
let danger = Danger()

export DANGER_GITHUB_API_TOKEN='5640133cdb18494a95c649ca066382eeafe3e50d'
export DANGER_FAKE_CI="YEP"
export DANGER_TEST_REPO='sayaleepote/DangerIntegrationTest'

let editedFiles = danger.git.modifiedFiles + danger.git.createdFiles
message("These files have changed: \(editedFiles.joined(separator: ", "))")
