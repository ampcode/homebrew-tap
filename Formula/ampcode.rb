class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774354153-gdeebb8"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774354153-gdeebb8/amp-darwin-arm64"
      sha256 "fe57c8428404f025388cc5a14990e4fda27c79aab54a958b0c71570ad53f1514"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774354153-gdeebb8/amp-darwin-x64"
      sha256 "d37361393f99f447ad24ada7bdd91759e00f6c48914a416d57f34000f282471b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774354153-gdeebb8/amp-linux-arm64"
      sha256 "44744469276a606eb0a695879f6b0c47d8fb5670e26b0385e293d757b691b4b2"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774354153-gdeebb8/amp-linux-x64"
      sha256 "d07d14d60b4e79ce5f256c1370803f200c94b3b671f16e386d6149286c71c3e8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
