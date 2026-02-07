class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770438539-gdaff1f"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770438539-gdaff1f/amp-darwin-arm64"
      sha256 "5bc710fb4013907998ed168c5debd34bca57640a523fb71b58e430e4521376a5"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770438539-gdaff1f/amp-darwin-x64"
      sha256 "ac3e887b3fa640893a24d344a1e419a7615d2d63086912167c938a309b2224f3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770438539-gdaff1f/amp-linux-arm64"
      sha256 "572df46befa5869cec079d290b3a12d4acaf5bc12a4d28ef0d1f6ef388b59314"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770438539-gdaff1f/amp-linux-x64"
      sha256 "896cd047e861b6912b7464d742e9065a1cee8d6d46d44f3c984b6d708fcfe254"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
