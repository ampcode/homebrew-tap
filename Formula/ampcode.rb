class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775837683-g6ddb8e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775837683-g6ddb8e/amp-darwin-arm64"
      sha256 "57f16273d3ea4f1b97523548b1dcde3869e7498e4aa3775a7652d3009c818dbc"
    else
      url "https://static.ampcode.com/cli/0.0.1775837683-g6ddb8e/amp-darwin-x64"
      sha256 "c11ac276221089a2f99c5461474d5224d43918e2be14822e9953d599f9342389"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775837683-g6ddb8e/amp-linux-arm64"
      sha256 "0ab2cc4d93160957ae8c6185e72bc14447cd367b2e09f97a4515a4e56f18d918"
    else
      url "https://static.ampcode.com/cli/0.0.1775837683-g6ddb8e/amp-linux-x64"
      sha256 "c5f02582a07e4eaca6f26b96b8eb6cfef0975a496ab70fe25ce751dae9f7d745"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
