class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772554299-gc34377"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772554299-gc34377/amp-darwin-arm64"
      sha256 "5c6d6ce4e9e326b4f721ec70758bbb3ea0c7cda329833062e320dcef16d35608"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772554299-gc34377/amp-darwin-x64"
      sha256 "0337da79ecf42c312c8c1c4a6510948d1aa6bc7d08340c54e9922bbd6bbc3da3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772554299-gc34377/amp-linux-arm64"
      sha256 "61178df5c8a9ea4ee0fa051c9362aa2862d0bdbaf4586aee64b79a3e2d3b50b9"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772554299-gc34377/amp-linux-x64"
      sha256 "c2af83e171c9764b95bcf45068684dc31a7b84e79c962b41d104c7e71075ada7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
