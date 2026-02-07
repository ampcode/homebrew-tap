class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770424325-g8b8e94"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770424325-g8b8e94/amp-darwin-arm64"
      sha256 "fc1211f8a05d7264f8cc8b08cf3500556a744c10ce10a2927510834f1259d9cb"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770424325-g8b8e94/amp-darwin-x64"
      sha256 "9d221f7dfb2a5647cc006d662d554d49898f9f0d3800eb7c8c9a03f835f6aa42"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770424325-g8b8e94/amp-linux-arm64"
      sha256 "a4f09d3dd133c38b4506d65968fae61c41405bf758ab0f9cfc24dab5811b6a39"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770424325-g8b8e94/amp-linux-x64"
      sha256 "d854d5f556230147011a2a9e6389caa23bb59c26114293171e7cf371d1e9074b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
