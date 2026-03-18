class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773878033-g2f2f23"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773878033-g2f2f23/amp-darwin-arm64"
      sha256 "3ea8c3fc9a2099598e7276621a719892f340b200111dea26bb3b59ddcd3fd18f"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773878033-g2f2f23/amp-darwin-x64"
      sha256 "8be4b61cf12f9808c7f067974db18079d70dec7e41252647dde123b54d7503ea"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773878033-g2f2f23/amp-linux-arm64"
      sha256 "ca36cb86f32a7bff289290b5c8f511f95e1c634c7c3434dfbc009280aec45ea7"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773878033-g2f2f23/amp-linux-x64"
      sha256 "27a699a2445496e5c347f6deb657f569cd2a637c53460beca637a65391c6ebbe"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
