class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770317189-gf1c0b2"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770317189-gf1c0b2/amp-darwin-arm64"
      sha256 "4174ee9dfd47f375ea7c996d90b4a279ce50ddfbf6d1489e3f955129b813e0d0"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770317189-gf1c0b2/amp-darwin-x64"
      sha256 "0619fde9aa01833ef515501d770e7145f11f2ed76b51aca75369dce85a5ae97f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770317189-gf1c0b2/amp-linux-arm64"
      sha256 "228900fd65d71120c7df2ab0aa7f3e8f9078ca89ede03db85cc8c95bddd76743"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770317189-gf1c0b2/amp-linux-x64"
      sha256 "8ba55c0bededed6e9e5c6a28eb5466ea2a070cdba710caba823afabfd4c580e9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
