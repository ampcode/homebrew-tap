class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772136472-g916e6d"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772136472-g916e6d/amp-darwin-arm64"
      sha256 "628a996baacf4a74dbedbaca5f34ea14d4298ec085c2a5ff70a13dafb8187bc3"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772136472-g916e6d/amp-darwin-x64"
      sha256 "bacfdec88eb5425f8df348d4c36bd4264e580c50339a102b12a6ff29ec29541a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772136472-g916e6d/amp-linux-arm64"
      sha256 "967bcf5d86385a94bdb01d3b8487b0d9eb1726329fc27c9dfaeed3c324992c1c"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772136472-g916e6d/amp-linux-x64"
      sha256 "d705761861d8451b6e555b6565c9cb20e5ffe464cfcbb056c13fbeb75ba39797"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
