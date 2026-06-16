class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781601196-gacc35e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781601196-gacc35e/amp-darwin-arm64"
      sha256 "3015afb628eba0d6e0c88b68d4180d835b409ea6c4d9ad430f4921787d7397d8"
    else
      url "https://static.ampcode.com/cli/0.0.1781601196-gacc35e/amp-darwin-x64"
      sha256 "8b5d83ae0e3ed3ce8a68e8217aac94922383224f30cbbd72c8f5950b43ce3588"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781601196-gacc35e/amp-linux-arm64"
      sha256 "a26fae4300685ab604f90819e81bbe4aaf4e0c8b417e3c62c5d2ae411d971f95"
    else
      url "https://static.ampcode.com/cli/0.0.1781601196-gacc35e/amp-linux-x64"
      sha256 "10f7ad0672ff8e36a6318a938e5696bcb7e728872564da9cfe0eec22e8e4f560"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
