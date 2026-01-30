class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769789187-g0ae368"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769789187-g0ae368/amp-darwin-arm64"
      sha256 "2d7673c15c448f8571311246d818a9dc7a350061cc19155865df937837b620f8"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769789187-g0ae368/amp-darwin-x64"
      sha256 "1f586c309cb99c535c4a4144057ef2f6541a521404eb2ce977d170e8231c69aa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769789187-g0ae368/amp-linux-arm64"
      sha256 "5c47be93297c21d9bef883effadb1b8cc118c8064799cb3f5ec2f24a0a738bdf"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769789187-g0ae368/amp-linux-x64"
      sha256 "5b4874984a5d8c300d66fc1dc781f171db41ea96a807f66c955926d02dd7412e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
