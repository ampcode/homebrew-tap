class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773755872-g74dcce"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773755872-g74dcce/amp-darwin-arm64"
      sha256 "4c4a69ada733b1efd2f91170bcda8738ab3e523d69909cfbc06956f0766e5f48"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773755872-g74dcce/amp-darwin-x64"
      sha256 "631d6babb614974a806a6379ae86b229dfbaedee7237310b049b871031322c7d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773755872-g74dcce/amp-linux-arm64"
      sha256 "f58473a6f990ea185e2f653216d4d65076d54b0a46e695bd604b503b4580df63"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773755872-g74dcce/amp-linux-x64"
      sha256 "fc3153005d3aa2ace4d87a0719554d644f8de315966a2d0421aa3f99f102efaf"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
