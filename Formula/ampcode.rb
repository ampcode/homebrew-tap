class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769665028-g800523"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769665028-g800523/amp-darwin-arm64"
      sha256 "c1a0e709acfbc1dd6d5a550919e0538b79aa386ff9c92765c98b299274a6c02c"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769665028-g800523/amp-darwin-x64"
      sha256 "e415e1ce65b90b42d7cb3cad64521d99be2f900e0e93f48a4f8071d35d3c812b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769665028-g800523/amp-linux-arm64"
      sha256 "a8891d677c998a9b65eef1dd5380d7801711a80bbed38030465032d5af663660"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769665028-g800523/amp-linux-x64"
      sha256 "20010b4d7142af8c4f21139ab873859e8897bc617430ec35e50ffd5725900f4d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
