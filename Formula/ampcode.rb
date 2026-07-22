class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784679396-g8179a5"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784679396-g8179a5/amp-darwin-arm64"
      sha256 "7e87b798bc7bff6fd7e872d5353a80a7821bfeda861616f2fc938198a97cde2e"
    else
      url "https://static.ampcode.com/cli/0.0.1784679396-g8179a5/amp-darwin-x64"
      sha256 "da18971805cb491c8351eb94f5d2c2fcae590cb8b9fca2639fe2f0bdfc2b4160"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784679396-g8179a5/amp-linux-arm64"
      sha256 "427d4c75884ee9de6bf1a90c61b051ef9028da2c58bacf09c57a46c90291f65c"
    else
      url "https://static.ampcode.com/cli/0.0.1784679396-g8179a5/amp-linux-x64"
      sha256 "19374decd419ea02d1685a0642d9bb37b451b2c35cca0d75aa75ff94b78ba05f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
