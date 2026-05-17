class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778976964-g668638"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778976964-g668638/amp-darwin-arm64"
      sha256 "def875d363c6c723877d04f609b0aa4c9ba0d365294c69ca0c2d1eebcb8c89b6"
    else
      url "https://static.ampcode.com/cli/0.0.1778976964-g668638/amp-darwin-x64"
      sha256 "9a052a23d9f79922922eec29210145b8804e13353caa262c93fe86df24705bc7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778976964-g668638/amp-linux-arm64"
      sha256 "be54e2bf227df7bbaed05ed6c80d3eb78861e0eb886280473d5750cf06d79195"
    else
      url "https://static.ampcode.com/cli/0.0.1778976964-g668638/amp-linux-x64"
      sha256 "cfdf636cc4eac2f74b75d6c9b95eba0e376becf5fc8d7fa8a4c17dd773df82c1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
