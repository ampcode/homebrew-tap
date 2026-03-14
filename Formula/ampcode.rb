class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773446697-g1c7bfe"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773446697-g1c7bfe/amp-darwin-arm64"
      sha256 "60f996d2a883602c141881bc3a5a24d0f204b4af7ce72f5cafde6906b8b248d3"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773446697-g1c7bfe/amp-darwin-x64"
      sha256 "33937b98f76153a784f3df4fbd645c25f507bd77845113d6a9523ba1c0fa2942"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773446697-g1c7bfe/amp-linux-arm64"
      sha256 "7c2d3ae6660875deecac91b2ecf75755d31bbc0815e293bc28c3577c0226db53"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773446697-g1c7bfe/amp-linux-x64"
      sha256 "5130c7046f8c7a902b4736a45c5a728462375dd691be264653bba9f76d67f330"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
