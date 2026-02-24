class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771904664-g145c4f"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771904664-g145c4f/amp-darwin-arm64"
      sha256 "67dbee38d18c8a23a347b71c24c07fd0a15e6f57b3b160aff7ec552b46dccb92"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771904664-g145c4f/amp-darwin-x64"
      sha256 "d54f48891f3488a0d51923c65b3e50623fcda196eab9ece29541da0317b4db1e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771904664-g145c4f/amp-linux-arm64"
      sha256 "2cb57fee3e5b1afaf7efa73b4dcc6ce1442049b61fe7519dba303d7fa4f5350c"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771904664-g145c4f/amp-linux-x64"
      sha256 "90f28f1e62601decca315e2ac6ab1facfc9360203acdb37b9803d6b1e4f8a1e5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
