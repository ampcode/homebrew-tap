class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773409213-g040419"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773409213-g040419/amp-darwin-arm64"
      sha256 "f99a0c1e5d409e8012cdc374a924aa5d78cef29c6052a921be280d98164c4244"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773409213-g040419/amp-darwin-x64"
      sha256 "420481717bd6ce093603cb4b3246e33c79533b5346fd5ff6594c1f0ab619e05b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773409213-g040419/amp-linux-arm64"
      sha256 "bd8a40a290fe9aa53e96597e7d4cb4951859014cb1e5a6b3f3b110e2145b0844"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773409213-g040419/amp-linux-x64"
      sha256 "508c31577c82a32d028997f3008efd6b31620a5b4ddbd3cedfe9c0851770e26c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
