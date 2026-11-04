cask "battdoctor" do
  version "0.1.2"
  sha256 "c5b06066d120c8c4ed7841556918760f43a48c5e6b22567451255a26d6d6f367"

  url "https://github.com/kumararyan1/battdoctor/releases/download/v#{version}/Battdoctor.app.zip"
  name "Battdoctor"
  desc "Energy-first battery and performance monitor for Apple Silicon Macs"
  homepage "https://github.com/kumararyan1/battdoctor"

  depends_on formula: "battdoctor"
  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Battdoctor.app"

  uninstall quit: "com.aryan.battdoctor.menubar"

  postflight_steps do
    run "/usr/bin/xattr",
        args: ["-dr", "com.apple.quarantine", "{{appdir}}/Battdoctor.app"]
  end

  zap trash: [
    "~/Library/Application Support/battdoctor",
    "~/.battdoctor",
  ]
end
