class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771934870-g4b5313"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771934870-g4b5313/amp-darwin-arm64"
      sha256 "098418760191b971c6adec7d3ebbbe473fbf8b2ebc7f392af5d8475e5ae5a126"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771934870-g4b5313/amp-darwin-x64"
      sha256 "b6e009e611264ca56abf741d2488f1da9fc3fd00eb15f61c8149e9a8383ae0c3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771934870-g4b5313/amp-linux-arm64"
      sha256 "8b443fed364a974f4cef820163d4f45f5bed3dddf771b0c784299256d3c1072d"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771934870-g4b5313/amp-linux-x64"
      sha256 "f7d3bfde7fe4d60226afc5324b3661d804c22ad5172d86d5872376218cf761c4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
