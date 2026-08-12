class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786523227-gda868f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786523227-gda868f/amp-darwin-arm64"
      sha256 "e8a464d8a090a993c82a1bc356a334915f2366047b4272fb8f1abc4b435357dc"
    else
      url "https://static.ampcode.com/cli/0.0.1786523227-gda868f/amp-darwin-x64"
      sha256 "80a3e541c687c49fe64e866d15d4133399e3a0f8d65dbc6edd0d3cbfdc2e7687"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786523227-gda868f/amp-linux-arm64"
      sha256 "fd13ab93fadcdbd8c2c08dd3c71b94dac3de727634dd982b33ec8af32530691f"
    else
      url "https://static.ampcode.com/cli/0.0.1786523227-gda868f/amp-linux-x64"
      sha256 "fdc92314c6531bcc8025beabb4b46e209e51928617b3e77c1b4dae8f6ca2e612"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
