class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769918305-g4da868"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769918305-g4da868/amp-darwin-arm64"
      sha256 "52f1584db073e065f73b4f8ae74e8eb3fb89116f6eb15a9a008d444c0c73a686"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769918305-g4da868/amp-darwin-x64"
      sha256 "8514968b98e99bb4419fea248a9c71fd026ab631e1a2300bb6971fe354a6d25e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769918305-g4da868/amp-linux-arm64"
      sha256 "0bea425357d48f675487c8f08d55cbfb42b9447040758943caf6483b52d18ca4"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769918305-g4da868/amp-linux-x64"
      sha256 "f65011562f819610220ba4b6dbfaa60a545164289af0303dfa9a2f7d931689fb"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
