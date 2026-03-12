class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773304029-gee323e"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773304029-gee323e/amp-darwin-arm64"
      sha256 "e4cdc40c684615a8faeb9b41393fc5902cb13231ddc3e9344cfe554289de83b2"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773304029-gee323e/amp-darwin-x64"
      sha256 "6c32c96fb20f6cda22ca0ae40f6e681b23ca53b4504060a73fa2c27df444a74f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773304029-gee323e/amp-linux-arm64"
      sha256 "9a00ccc8f5c39f55c1c1637ca758f49a9f6be1d84bf4529eefbd7386cf35c991"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773304029-gee323e/amp-linux-x64"
      sha256 "7e513c8f87292e2cf1e09417f595e0f8c62eff6cdd2fd44ea7244e71d40a6bbf"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
