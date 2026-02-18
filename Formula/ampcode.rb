class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771431333-g5ac106"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771431333-g5ac106/amp-darwin-arm64"
      sha256 "521a01925b2ed06f4457240e83055996f5438644d185a672a16c04a39c61be2c"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771431333-g5ac106/amp-darwin-x64"
      sha256 "96325f8d1be58d930f33b5ab6a413fa2a7c55c1115702390e787f48ad50ba082"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771431333-g5ac106/amp-linux-arm64"
      sha256 "0b49cbb6b9a409958d1ba28e61194aad4f3b0295e8845e977aea1b41cf0f2e9b"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771431333-g5ac106/amp-linux-x64"
      sha256 "bea03c8b3d0bfcdabac2cdc6f8ddfba36b8fc13f014f9df489910bfc4c50544d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
