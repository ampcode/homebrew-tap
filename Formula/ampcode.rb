class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782565296-g7cbdcd"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782565296-g7cbdcd/amp-darwin-arm64"
      sha256 "25f1a983891cba9e2a8a8eb08f9ed12fe0a0c71c8f5dde1326cbbd10d4955d74"
    else
      url "https://static.ampcode.com/cli/0.0.1782565296-g7cbdcd/amp-darwin-x64"
      sha256 "78b26a371e74f316a124399546aab8f468aee8146ff49f8601f0a853666815bc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782565296-g7cbdcd/amp-linux-arm64"
      sha256 "45a4ba2eecbbbed3d3916bc9b4d68913a78c666be6493c96ed921c6c7b3a4f07"
    else
      url "https://static.ampcode.com/cli/0.0.1782565296-g7cbdcd/amp-linux-x64"
      sha256 "6f9a0247b694c769b31cf7e7d6675579477661a74d8b5c5298e0145049fc6de1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
