class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773750596-g343cca"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773750596-g343cca/amp-darwin-arm64"
      sha256 "002bffcecddd41b119251f5e75448b06235f0df145f8f3ca5cd2d13b95c0112f"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773750596-g343cca/amp-darwin-x64"
      sha256 "3fc4227f4d1f1625141015adc8847acf174259be755e042898a79c58965ba43c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773750596-g343cca/amp-linux-arm64"
      sha256 "53200b2620a47af29ec94936d2e5e922b823374b5f830bd6e4092f5015414455"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773750596-g343cca/amp-linux-x64"
      sha256 "f994c7212203cd831375cf35340b7f652d713f0aae4671f5a7e6e35ca26c063b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
