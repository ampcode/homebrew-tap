class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787458257-gebce41"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787458257-gebce41/amp-darwin-arm64"
      sha256 "60f409b2dc6f2a2de3adaec60405a4b07b6189a69915918df8f7c535d3baad2d"
    else
      url "https://static.ampcode.com/cli/0.0.1787458257-gebce41/amp-darwin-x64"
      sha256 "629073ea71067441dc4d401693643038732990b85e92e76fad0fe7289f362e87"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787458257-gebce41/amp-linux-arm64"
      sha256 "29cae3362e92ed58f249ab87b8a5a5b648d7565c4eb154dc528457239a53da30"
    else
      url "https://static.ampcode.com/cli/0.0.1787458257-gebce41/amp-linux-x64"
      sha256 "333f5086a381dbf6716f2c747508ea4b0b5451e3db4c4370e68fcb5601bf5bc3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
