class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794657642-gc1e41b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794657642-gc1e41b/amp-darwin-arm64"
      sha256 "cca4274cce31c9d3d2833fdb110d7639dd6322a3af15b01055a9424d2197c16c"
    else
      url "https://static.ampcode.com/cli/0.0.1794657642-gc1e41b/amp-darwin-x64"
      sha256 "4f717941bb0086a3861af6fcff31b2c6a836273e7a8290792443db84bbe0f31c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794657642-gc1e41b/amp-linux-arm64"
      sha256 "ead2ad135552d049f8930dd977a97c8c1a632079e61540fdb0d658fa623a4c93"
    else
      url "https://static.ampcode.com/cli/0.0.1794657642-gc1e41b/amp-linux-x64"
      sha256 "242438431e5c846ddf280a66a3ff35c3f8d9795bc1f46a0764638ee480c8ebf8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
