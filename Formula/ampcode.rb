class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773829890-g77f7ad"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773829890-g77f7ad/amp-darwin-arm64"
      sha256 "4d8b93bfc958b01bd200237c380dbade9e705c13dfc45407f3854ddcc514daad"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773829890-g77f7ad/amp-darwin-x64"
      sha256 "7ae05c4764447b59102ba3d9b0f25ff9f2a280b61c896174c828298a661fa3d6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773829890-g77f7ad/amp-linux-arm64"
      sha256 "8a662c9211f8ffc34d5c998f93a2df202a464a7a0606338983e8d850bdfb28df"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773829890-g77f7ad/amp-linux-x64"
      sha256 "f6765f9dd91d60df5796a81ccbbdb197c897c461f95355740ec764f428de040f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
