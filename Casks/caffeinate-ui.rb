cask "caffeinate-ui" do
  version "1.7"
  sha256 "224df6ef45cad00d6dde29dc0af6a728619f1b0dba30569ef012ced4c7b2e4eb"

  url "https://github.com/harinaralasetty/caffeinate-ui/releases/download/v#{version}/Caffeinate-UI-#{version}.zip"
  name "Caffeinate UI"
  desc "Keep-awake controls, CLI session timer and persistent coffee awards"
  homepage "https://github.com/harinaralasetty/caffeinate-ui"

  conflicts_with cask: ["caffeine", "domzilla-caffeine"]
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Caffeinate UI.app"

  uninstall quit: "personal.harinaralasetty.Caffeine"
  # No zap: preserve earned awards and preferences on ordinary uninstall.

  caveats <<~EOS
    Caffeinate UI is not signed with an Apple Developer ID or notarized.
    macOS may block the first launch. If so, open System Settings >
    Privacy & Security and choose "Open Anyway" for Caffeinate UI.
  EOS
end
