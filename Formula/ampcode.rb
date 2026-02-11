class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770783552-gc1ce14"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770783552-gc1ce14/amp-darwin-arm64"
      sha256 "075235451b07354420574c58291bbf0b445a15bd6c27f209a4d1be5f38a3e101"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770783552-gc1ce14/amp-darwin-x64"
      sha256 "9b4b1d293a434ad01c8f731007d49740dfa5ae6cc96cd487057fbbc8f2bf83b1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770783552-gc1ce14/amp-linux-arm64"
      sha256 "c92191b4c072ebf8953a321fc6510348ad1f6288242141950d4dbdb1f836ae6e"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770783552-gc1ce14/amp-linux-x64"
      sha256 "6bbcaca908850142312bd5c0d874744c9c3aeb884bfa835e5331ece5fc5ef6e3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
