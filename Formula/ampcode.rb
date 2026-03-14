class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773475461-g360028"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773475461-g360028/amp-darwin-arm64"
      sha256 "e61712d02e5ed76f9877e1f7c81ec5093a7d5d6058174d92f7174f83c9aae752"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773475461-g360028/amp-darwin-x64"
      sha256 "8feae547fa441bd170d51b0a9cc60550d5ea67c5b062ba3c9d7bf5261c9cda2e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773475461-g360028/amp-linux-arm64"
      sha256 "c8b578e03fd0156587d0323f4a151d8c98c72ae1a03cb06f3f7e5f17a00ddd37"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773475461-g360028/amp-linux-x64"
      sha256 "2c8d237ba5f46a1cc050d57df6d21dfac82bf967936f456d9286e24665173435"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
