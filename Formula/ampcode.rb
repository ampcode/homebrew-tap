class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770698699-gc7a3fa"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770698699-gc7a3fa/amp-darwin-arm64"
      sha256 "897455d9348f416f99fd5ad527a9ce9fb8807307641c4c5efe54491f6f2f225c"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770698699-gc7a3fa/amp-darwin-x64"
      sha256 "814630aed90e056eeb04c942a4bac3b68eefff2cf670690081f2b0a9bfa26f0f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770698699-gc7a3fa/amp-linux-arm64"
      sha256 "7516a4eef3030f93f60c409e2c9ea299c346b95e4665dd6d04dc5ca5c3163f23"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770698699-gc7a3fa/amp-linux-x64"
      sha256 "7851466e32f633418438485ce88063e0de2f09eb99cb9ccd63c0be11c1d91a0a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
