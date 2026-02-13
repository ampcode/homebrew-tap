class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770970161-g8e7d17"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770970161-g8e7d17/amp-darwin-arm64"
      sha256 "3972188c3109ac77c1112514851dd8d5c04e4587cefbfdf34fca3f7139c53839"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770970161-g8e7d17/amp-darwin-x64"
      sha256 "69934ac614a6ff3609f9caa525651add461a8e2c618e04a4247ee95707978381"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770970161-g8e7d17/amp-linux-arm64"
      sha256 "f4df895c8b177eb8d0f981baca91bfff62dbe7b6bc8ab853f8ebecea2f4a4e2a"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770970161-g8e7d17/amp-linux-x64"
      sha256 "c5857352a780e00fa0ab8a89ea9ad32a771b45ca5642d1dd9564563938b21071"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
