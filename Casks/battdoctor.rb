cask "battdoctor" do
  version "0.1.1"
  sha256 "cd530e825c42441e2283d40fe13638111626c9f49cfeb8ece10f693ec5c813bf"

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
