class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790740844-g023754"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790740844-g023754/amp-darwin-arm64"
      sha256 "c44a9113cf2bdedd53c8f0b86491db2615f0e2b6701be104b8185eaae9c6daf0"
    else
      url "https://static.ampcode.com/cli/0.0.1790740844-g023754/amp-darwin-x64"
      sha256 "933d93ca4477a639b933fdded6c8f9cc8517ec5567407570bd7ff08ad58d2fd0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790740844-g023754/amp-linux-arm64"
      sha256 "b78de5b8b0a10aece641bbfa438328fa9fbdb3e156d71e9542f097630c48a847"
    else
      url "https://static.ampcode.com/cli/0.0.1790740844-g023754/amp-linux-x64"
      sha256 "70f44e3cd438384da58a7944ba01c7392c2863b65a697a58b10c958193e91156"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
