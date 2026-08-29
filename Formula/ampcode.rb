class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788022426-gb1510d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788022426-gb1510d/amp-darwin-arm64"
      sha256 "0de3f36ba746bf2566a744fcac8c8c5f39304eb3e8d98f52d8acd5d885b4be67"
    else
      url "https://static.ampcode.com/cli/0.0.1788022426-gb1510d/amp-darwin-x64"
      sha256 "66dd329b3cd12187561786d3b485bc479cf4c927f3a53e232ce6a013b42aca3b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788022426-gb1510d/amp-linux-arm64"
      sha256 "eda5379dda00e9c7aa9343f808ad02005e48181e73f38c84fb7c7d037cccf6d9"
    else
      url "https://static.ampcode.com/cli/0.0.1788022426-gb1510d/amp-linux-x64"
      sha256 "5cb550412f00d4b045259c21ca4cb2fc8222a51d50c44703c38816f4c5e186e2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
