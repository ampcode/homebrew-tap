class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769806880-g4da85f"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769806880-g4da85f/amp-darwin-arm64"
      sha256 "700abdcc3ec27d6dc3ed00a3348e2c0f645eb11a62b27bb1a1e00e8cb6285e85"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769806880-g4da85f/amp-darwin-x64"
      sha256 "5bc77d739bf40b882e000e933d6f11da05b2d722d676aa9cd1ce7aacbd97b528"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769806880-g4da85f/amp-linux-arm64"
      sha256 "e0b3fc12743ef909dea0077dd5a967e02f3229ab09f0fdf343b71d3fc3eccec5"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769806880-g4da85f/amp-linux-x64"
      sha256 "4d5b25c3f48ce2414655a69224a7b241a5f95f262c40bdebdb12b865700b52b7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
