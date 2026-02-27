class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772215730-gd746b2"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772215730-gd746b2/amp-darwin-arm64"
      sha256 "abda1edd3a1b994a884ab2bb57fe400635ab4bed54dfa146402cf9b3b46d075f"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772215730-gd746b2/amp-darwin-x64"
      sha256 "83569c0a632dea1fd23818b4eb10bd3688b0b19c29425609e66a3d7d7606434c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772215730-gd746b2/amp-linux-arm64"
      sha256 "3bcb1fc8b6fae0e2c6929a8feae35db126223f2eb55a7df1c4d2da62154aeee3"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772215730-gd746b2/amp-linux-x64"
      sha256 "98027821b99bd19a53075bf19a2e1a70fd756f7497dcf1546b13f2c10a872677"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
