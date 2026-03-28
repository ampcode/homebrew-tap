class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774713864-g12539b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774713864-g12539b/amp-darwin-arm64"
      sha256 "4bbfae2c00f974ba93fae6786d0134a8334eaaee7fde72df7bd91f8d27a0ee22"
    else
      url "https://static.ampcode.com/cli/0.0.1774713864-g12539b/amp-darwin-x64"
      sha256 "4a1be7bf4fc16232706e43fc2753393957434e4720f0bda6fc53597f9e87a6f5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774713864-g12539b/amp-linux-arm64"
      sha256 "f71dc8f595836d26f21758913adfd6cf3ba93882536f50e7836e30d964b59a21"
    else
      url "https://static.ampcode.com/cli/0.0.1774713864-g12539b/amp-linux-x64"
      sha256 "d306a019490e0f14d8f4eadde9f33c8182dd768db7a221a8f73f9ec4d8289b93"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
