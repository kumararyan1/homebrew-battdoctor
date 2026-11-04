cask "battdoctor" do
  version "0.1.3"
  sha256 "134ad25e1ebd442c163e7993e596f9fcc2736dc84aa6f5726ae55a7ec8a5a850"

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
