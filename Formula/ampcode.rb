class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778578520-g168991"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778578520-g168991/amp-darwin-arm64"
      sha256 "f3ab86965db45e2cc43ba4e42d2eb2997247fdac4362869ba4b9490f5ea76534"
    else
      url "https://static.ampcode.com/cli/0.0.1778578520-g168991/amp-darwin-x64"
      sha256 "113f878b8a0aafb2657e9c73da5707a7af00f35c4a26c4d5515001e9d55fcb81"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778578520-g168991/amp-linux-arm64"
      sha256 "bebdb9b784aa31f4b134f3f23d9e678b29053601fdcc7d24e5ad0fde89964751"
    else
      url "https://static.ampcode.com/cli/0.0.1778578520-g168991/amp-linux-x64"
      sha256 "eddf4dd5614565810b60f4d60dcc153b60768641f0f994279fb5a3e646617f1f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
