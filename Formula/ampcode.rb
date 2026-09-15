class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789481293-g871923"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789481293-g871923/amp-darwin-arm64"
      sha256 "d19c3b6261e1c365d65ce78008ee3be90a24ced17053a877ec2c95ddf5e58363"
    else
      url "https://static.ampcode.com/cli/0.0.1789481293-g871923/amp-darwin-x64"
      sha256 "f30afe33df882f96fb91bc1adc13b4a0b5331ba64a3e5aed4cb232ced518211b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789481293-g871923/amp-linux-arm64"
      sha256 "5cc1a10e6bdc2e1db62d0678fe01200dfa0c3d6667632e036c4384dfee5680aa"
    else
      url "https://static.ampcode.com/cli/0.0.1789481293-g871923/amp-linux-x64"
      sha256 "4277dc492514dcc1ab5e9938c2a049e7be2ad1681209df12dea0e454330051ee"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
