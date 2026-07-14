class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784060561-g91077d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784060561-g91077d/amp-darwin-arm64"
      sha256 "e8ae55dda27d3e9bc803144d6993e3e7d6f80be4a316b9fe6695901b00730cee"
    else
      url "https://static.ampcode.com/cli/0.0.1784060561-g91077d/amp-darwin-x64"
      sha256 "f51ed50da0c0d79ccdf8666e7dfb8695ee5a5bcdbb5ce2cc5daee04b1d664ef5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784060561-g91077d/amp-linux-arm64"
      sha256 "ed445d8bd3c9ba0d96de7831d334d4c1a1a9855f792a7a27ecb9c36479075ad3"
    else
      url "https://static.ampcode.com/cli/0.0.1784060561-g91077d/amp-linux-x64"
      sha256 "78ede4648623fb0a637699b81a9649f88a64bd8e8328ba483533f993297ac7bb"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
