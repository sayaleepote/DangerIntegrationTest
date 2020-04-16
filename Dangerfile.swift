import Danger 
let danger = Danger()

// Instead of making a markdown table in the main message
// sprinkle those comments inline, this can be a bit noisy
// but it definitely feels magical.
SwiftLint.lint(inline: true)

// The equivalent to running `swiftlint` in the root of the folder
SwiftLint.lint(lintAllFiles: false)
SwiftLint.lint(root: "DangerIntegrationTest")

let editedFiles = danger.git.modifiedFiles + danger.git.createdFiles
message("These files have changed: \(editedFiles.joined(separator: ", "))")
