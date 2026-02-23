# typed: strict
# frozen_string_literal: true

cask "phtv" do
  version "2.5.9"
  sha256 "d4bbe81c8e5ee4e8a74b6399c17df2c61bf955d3b22d08029c211d4f964b689d"

  url "https://github.com/PhamHungTien/PHTV/releases/download/v#{version}/PHTV-#{version}.dmg",
      verified: "github.com/PhamHungTien/"
  name "PHTV"
  name "Precision Hybrid Typing Vietnamese"
  desc "Modern Vietnamese input method"
  homepage "https://phamhungtien.github.io/PHTV/"

  # Universal Binary - supports both Intel and Apple Silicon
  livecheck do
    url :url
    strategy :github_latest
  end

  # System requirements
  depends_on macos: ">= :ventura"

  app "PHTV.app"

  zap trash: [
    "~/Library/Application Support/PHTV",
    "~/Library/Caches/com.phamhungtien.phtv",
    "~/Library/Logs/PHTV",
    "~/Library/Preferences/com.phamhungtien.phtv.plist",
  ]

  caveats <<~EOS
    PHTV requires Accessibility permission to function.

    To grant permission:
    1. Open System Settings
    2. Go to Privacy & Security > Accessibility
    3. Enable PHTV

    For more information, visit: https://phamhungtien.github.io/PHTV/
  EOS
end
