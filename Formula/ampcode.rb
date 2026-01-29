class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769673940-g18d695"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769673940-g18d695/amp-darwin-arm64"
      sha256 "f6243c833a3b4196bc490286826e3b4f18f78df571ec1fc49de6db4f7d0cb5d7"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769673940-g18d695/amp-darwin-x64"
      sha256 "5b6848b4783e2153d7637959aa76d564b69b1c3b1baa9a595231e0f76d7bff8b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769673940-g18d695/amp-linux-arm64"
      sha256 "84e43c84dd85dfebe060cd36128be0bb4d407c6f4367a0cda77f8ff506da47cb"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769673940-g18d695/amp-linux-x64"
      sha256 "5299d5cc40e25686d76334f5301c9f0782609f06268729848ea1203bd70e7eea"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
