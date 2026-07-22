class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784744899-ge9bc43"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784744899-ge9bc43/amp-darwin-arm64"
      sha256 "06eb45286a8afdad01cf2117b5b586831d3e41c799306c594fbfc8510f157750"
    else
      url "https://static.ampcode.com/cli/0.0.1784744899-ge9bc43/amp-darwin-x64"
      sha256 "5017c5644e708628fd7434547642f397265f81795091208fcdc918478815128e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784744899-ge9bc43/amp-linux-arm64"
      sha256 "9cdcf4d50cf143f4af3dec60197ff508e01894408c3f4d727bef53fb904c45db"
    else
      url "https://static.ampcode.com/cli/0.0.1784744899-ge9bc43/amp-linux-x64"
      sha256 "04ea113582ffbf48cf9375bde451e75311c908364f17d49a4f94c0519566f087"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
