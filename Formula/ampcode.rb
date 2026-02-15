class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771156907-gd84e58"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771156907-gd84e58/amp-darwin-arm64"
      sha256 "7ce1421399bb7a253393dc929ad57bd5fb7ebf5fbad06581409d9cc82e271dc7"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771156907-gd84e58/amp-darwin-x64"
      sha256 "e1f655cadc41d2a04db6a2c69625259f22121a123de73f279330a804ce2e6d3f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771156907-gd84e58/amp-linux-arm64"
      sha256 "0f16dec100dbfb3fd8713a0d6709d920c20376640f2c77d1eb0481e7cb7e71f9"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771156907-gd84e58/amp-linux-x64"
      sha256 "73d4663bee7f6cce116872cb9b3d5259456110ceb9fb54f86fb32f0cf2c9d39e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
