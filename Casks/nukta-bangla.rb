cask "nukta-bangla" do
  version "1.0.1"
  sha256 "31eb5e75978b5b70190e446f8e2d8dd03f1521f3119a6ef2565fd7bb968ea840"

  url "https://github.com/Nukta-Solutions/nukta-bangla-keyboard/releases/download/v#{version}/NuktaBangla.dmg"
  name "Nukta Bangla"
  name "নুকতা বাংলা"
  desc "Bijoy and phonetic Bangla keyboard (input method)"
  homepage "https://github.com/Nukta-Solutions/nukta-bangla-keyboard"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  pkg "Install Nukta Bangla.pkg"

  uninstall quit:    "com.nuktasolutions.inputmethod.NuktaBangla",
            pkgutil: [
              "com.asifmahmud.inputmethod.NuktaBangla.pkg",
              "com.nuktasolutions.inputmethod.NuktaBangla.pkg",
            ],
            delete:  "/Library/Input Methods/NuktaBangla.app"

  zap trash: [
    "~/Library/Application Support/Nukta Bangla",
    "~/Library/Preferences/com.asifmahmud.inputmethod.NuktaBangla.plist",
    "~/Library/Preferences/com.nuktasolutions.inputmethod.NuktaBangla.plist",
  ]

  caveats <<~EOS
    Log out and back in, then add the keyboard in
      System Settings → Keyboard → Input Sources → Edit… → + → Bangla → নুকতা বাংলা
  EOS
end
