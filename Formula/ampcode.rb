class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770567013-gdfd594"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770567013-gdfd594/amp-darwin-arm64"
      sha256 "ffb97100ca5454f8c15b1f8c8dbf3b4caa7f990eaa80fef7759780c33565f6ec"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770567013-gdfd594/amp-darwin-x64"
      sha256 "8c90e0db6b81118e5256af0aa09b2fd43680c25381f51b650fe18ba3ccdee9bd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770567013-gdfd594/amp-linux-arm64"
      sha256 "0691876570931c8e17119bedb95fe4dd3a8686d8e296d3a08f7afeff0e773cda"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770567013-gdfd594/amp-linux-x64"
      sha256 "bc64ce78395b94f3a3a4a8811ba732d8ac418d5700a35cd419e7d7fc4b2a150a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
