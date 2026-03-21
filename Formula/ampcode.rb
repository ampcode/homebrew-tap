class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774121460-gc0aaac"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774121460-gc0aaac/amp-darwin-arm64"
      sha256 "fe708c57ffd8f417f71c23caec222950d553e241723eae18e96066b499727cbd"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774121460-gc0aaac/amp-darwin-x64"
      sha256 "7ea4c270687113151174bd678ebe05b9bff89b3e490f5fc7be674eae65bd749c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774121460-gc0aaac/amp-linux-arm64"
      sha256 "cf703a3b28268a6186d420c6ef3ba4bb24d706fc79427fbc786f80e5c447bd2a"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774121460-gc0aaac/amp-linux-x64"
      sha256 "70db3f32abd0b7f3801401de6cb9265d86442748a965b47f2493a833c1123469"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
