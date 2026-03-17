class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773768185-g3484e8"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773768185-g3484e8/amp-darwin-arm64"
      sha256 "cdb7e141faef734df27cedccfbf016ab0f61098e550bbf26ea16b3d4c2799d9d"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773768185-g3484e8/amp-darwin-x64"
      sha256 "cb774a1f621797ec43804009082c9f3563aecb3ef8e2f26406be137e0f004a19"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773768185-g3484e8/amp-linux-arm64"
      sha256 "d7df6e5ed1ac7e193a50e79f515ef0232710235eaeddf6d2927f08d0096b95c3"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773768185-g3484e8/amp-linux-x64"
      sha256 "0a06338637af6a8b3ff8fed0920e30835a28001d1a67fb28c39562967b94c660"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
