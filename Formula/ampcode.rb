class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770595468-g04ddf9"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770595468-g04ddf9/amp-darwin-arm64"
      sha256 "14ffe645c36f60852c4c642a283860e339ff276a1b2d9660f53c6cfd148dd4c7"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770595468-g04ddf9/amp-darwin-x64"
      sha256 "fedaf7d46cd271b30ea011eea8ec5ae827460c12e16cc895caa4e905e74d77c2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770595468-g04ddf9/amp-linux-arm64"
      sha256 "aa4bf0a74ae8b3205d211899fe6893bc301ce22c9449dc8157e1d02d5e6e9ecd"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770595468-g04ddf9/amp-linux-x64"
      sha256 "c12f4fc7eb1b474bab4a1b3fedf6550e55b94baaac700bc13840fe7b0daf0caa"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
