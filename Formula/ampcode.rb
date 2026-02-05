class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770287451-g431220"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770287451-g431220/amp-darwin-arm64"
      sha256 "f9f2ec65780dbd10f7b1d287c1c8166fc76acae0b0a776df5f4952d2ec82ff31"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770287451-g431220/amp-darwin-x64"
      sha256 "0b877b57127b9ed68e85c1abf799c55da998886013473b5fa379766b227e7e56"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770287451-g431220/amp-linux-arm64"
      sha256 "982c2838562616d91efd9bce3d35595445ba442ebd7806f0e42669a692e7aa07"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770287451-g431220/amp-linux-x64"
      sha256 "e1398dabc0ea7aa66e1b7dd14d8067ef956bf70dbd5ed8b202c8ee4aab63b5f4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
