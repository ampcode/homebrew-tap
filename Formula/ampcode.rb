class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786809683-g406e31"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786809683-g406e31/amp-darwin-arm64"
      sha256 "28636523e66d88bb3de939d52da87abcdd18822a058ba39bc0a6929703a5103f"
    else
      url "https://static.ampcode.com/cli/0.0.1786809683-g406e31/amp-darwin-x64"
      sha256 "df3d1a39e3d9f1cf07ef58fffbb1d9352566a1c82471677d705821e7a77c4bf6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786809683-g406e31/amp-linux-arm64"
      sha256 "53325c2e25ce383709bf32ea38922e540b3df2fa09738e3ac5b89aa43e00cdf4"
    else
      url "https://static.ampcode.com/cli/0.0.1786809683-g406e31/amp-linux-x64"
      sha256 "7b15e8977d61c10c7094b3a91fed58b38a74e4cca605cf4a127968d9536441eb"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
